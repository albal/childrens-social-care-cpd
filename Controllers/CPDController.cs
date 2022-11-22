﻿using Childrens_Social_Care_CPD.Models;
using Contentful.Core;
using Contentful.Core.Models;
using Contentful.Core.Search;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using System.Linq;
using System;
using Childrens_Social_Care_CPD.Enums;
using Childrens_Social_Care_CPD.Constants;

namespace Childrens_Social_Care_CPD.Controllers
{
    public class CPDController : BaseController
    {
        private readonly ILogger<CPDController> _logger;
        private readonly IContentfulClient _client;

        public CPDController(ILogger<CPDController> logger, IContentfulClient client) :base(client)
        {
            _logger = logger;
            _client = client;
        }
        
        public async Task<IActionResult> LandingPage(string PageName, string PageType)
        {
            ContentfulCollection<PageViewModel> pageViewModel = await GetViewModel(PageName, PageType);
            foreach (PageViewModel viewModel in pageViewModel)
            {
                viewModel.Roles = viewModel.Roles?.OrderBy(x => x.SortOrder).ToList();
                viewModel.Paragraphs = viewModel.Paragraphs?.OrderBy(x => x.SortOrder).ToList();
            }

            
            return View(pageViewModel);
        }

        private async Task<ContentfulCollection<PageViewModel>> GetViewModel(string pageName, string pageType)
        {
            int contentLevel = 10;
            ContentPageType contentPageType;

            if (string.IsNullOrEmpty(pageName) && string.IsNullOrEmpty(pageType))
            {
                pageName = PageNames.HomePage.ToString();
                contentPageType = new ContentPageType { PageType = PageTypes.Master.ToString() };
            }
            else
            {
                contentPageType = new ContentPageType { PageType = pageType };
            }

            var queryBuilder = QueryBuilder<PageViewModel>.New.ContentTypeIs(ContentTypes.PAGE)
                .FieldEquals("fields.pageName.fields.pageName", pageName)
                .FieldEquals("fields.pageName.sys.contentType.sys.id", ContentTypes.PAGENAMES)
                .Include(contentLevel);

            var result = await _client.GetEntries<PageViewModel>(queryBuilder);
            result.All(c => { c.PageType = contentPageType; return true; });
            
            return result;
        }
      
    }
}