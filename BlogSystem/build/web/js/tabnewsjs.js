                           function showtabnews() {
                                $(".tab_news .tab_area li").bind("mouseover",
                                        function () {
                                            var _index = $(".tab_news .tab_area li").index(this);
                                            $(".tab_news .tab_area li").removeClass("selected");
                                            $(this).addClass("selected");
                                            $(".tab_news .tab_container").addClass("display_none");
                                            $(".tab_news .content" + _index).removeClass("display_none");
                                        }).focus(function () {
                                    $(this).blur();
                                });

                                $(".menu .xxcx").hover(function () {
                                    $(this).find("ul").addClass("displaynow");
                                },
                                        function () {
                                            $(this).find("ul").removeClass("displaynow");
                                        });

                            }
