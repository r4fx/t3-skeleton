plugin.tx_linkhandler {

  tx_news_domain_model_news {
    # force link generation also when the news record are hidden or deleted
    forceLink = 0

    # typolink settings
    parameter = 29
    additionalParams = &tx_news_pi1[news]={field:uid}&tx_news_pi1[controller]=News&tx_news_pi1[action]=detail
    additionalParams.insertData = 1
    useCacheHash = 1
  }

  tx_przykladowa_nazwa_tabeli{
    forceLink = 0
    parameter = 175
    additionalParams = &param1={field:uid}
    additionalParams.insertData = 1
    useCacheHash = 1
  }
}