.class public Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SearchActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    .line 46
    sget v0, Lcom/mh/movie/core/R$id;->iv_search_cancel:I

    const-string v1, "field \'ivSearchCancel\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    sget v1, Lcom/mh/movie/core/R$id;->iv_search_cancel:I

    const-string v2, "field \'ivSearchCancel\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->ivSearchCancel:Landroid/widget/ImageView;

    .line 48
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->b:Landroid/view/View;

    .line 49
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v0, Lcom/mh/movie/core/R$id;->linear_top:I

    const-string v1, "field \'linearTop\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearTop:Landroid/widget/LinearLayout;

    .line 56
    sget v0, Lcom/mh/movie/core/R$id;->labels:I

    const-string v1, "field \'labels\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    .line 57
    sget v0, Lcom/mh/movie/core/R$id;->linear_search_history:I

    const-string v1, "field \'linearSearchHistory\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearSearchHistory:Landroid/widget/LinearLayout;

    .line 58
    sget v0, Lcom/mh/movie/core/R$id;->linear_search_hot:I

    const-string v1, "field \'linearSearchHot\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearSearchHot:Landroid/widget/LinearLayout;

    .line 59
    sget v0, Lcom/mh/movie/core/R$id;->linear_search:I

    const-string v1, "field \'linearSearch\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearSearch:Landroid/widget/LinearLayout;

    .line 60
    sget v0, Lcom/mh/movie/core/R$id;->recycler_search_result:I

    const-string v1, "field \'recyclerSearchResult\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->recyclerSearchResult:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    .line 61
    sget v0, Lcom/mh/movie/core/R$id;->linear_search_result:I

    const-string v1, "field \'linearSearchResult\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearSearchResult:Landroid/widget/LinearLayout;

    .line 62
    sget v0, Lcom/mh/movie/core/R$id;->et_search_input:I

    const-string v1, "field \'etSearchInput\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    .line 63
    sget v0, Lcom/mh/movie/core/R$id;->iv_search_history_del:I

    const-string v1, "field \'ivSearchHistoryDel\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 64
    sget v1, Lcom/mh/movie/core/R$id;->iv_search_history_del:I

    const-string v2, "field \'ivSearchHistoryDel\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->ivSearchHistoryDel:Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->c:Landroid/view/View;

    .line 66
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget v0, Lcom/mh/movie/core/R$id;->ll_content:I

    const-string v1, "field \'rlContent\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->rlContent:Landroid/widget/RelativeLayout;

    .line 73
    sget v0, Lcom/mh/movie/core/R$id;->sv_state:I

    const-string v1, "field \'svState\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    .line 74
    sget v0, Lcom/mh/movie/core/R$id;->tl_tab_layout:I

    const-string v1, "field \'tlTabLayout\'"

    const-class v2, Landroid/support/design/widget/TabLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->tlTabLayout:Landroid/support/design/widget/TabLayout;

    .line 75
    sget v0, Lcom/mh/movie/core/R$id;->sv_state_empty:I

    const-string v1, "field \'svEmpty\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svEmpty:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    .line 76
    sget v0, Lcom/mh/movie/core/R$id;->vp_search_label:I

    const-string v1, "field \'vpSearchLabel\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->vpSearchLabel:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    .line 77
    sget v0, Lcom/mh/movie/core/R$id;->rv_search_suggestion:I

    const-string v1, "field \'rvSuggestion\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->rvSuggestion:Landroid/support/v7/widget/RecyclerView;

    .line 78
    sget v0, Lcom/mh/movie/core/R$id;->ll_search_suggestion:I

    const-string v1, "field \'llSearchSuggestion\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->llSearchSuggestion:Landroid/widget/LinearLayout;

    .line 79
    sget v0, Lcom/mh/movie/core/R$id;->tv_search_start:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->d:Landroid/view/View;

    .line 81
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v0, Lcom/mh/movie/core/R$id;->topbar_left_ll:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 88
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->e:Landroid/view/View;

    .line 89
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    .line 104
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->ivSearchCancel:Landroid/widget/ImageView;

    .line 105
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearTop:Landroid/widget/LinearLayout;

    .line 106
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    .line 107
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearSearchHistory:Landroid/widget/LinearLayout;

    .line 108
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearSearchHot:Landroid/widget/LinearLayout;

    .line 109
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearSearch:Landroid/widget/LinearLayout;

    .line 110
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->recyclerSearchResult:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    .line 111
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearSearchResult:Landroid/widget/LinearLayout;

    .line 112
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    .line 113
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->ivSearchHistoryDel:Landroid/widget/TextView;

    .line 114
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->rlContent:Landroid/widget/RelativeLayout;

    .line 115
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    .line 116
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->tlTabLayout:Landroid/support/design/widget/TabLayout;

    .line 117
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svEmpty:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    .line 118
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->vpSearchLabel:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    .line 119
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->rvSuggestion:Landroid/support/v7/widget/RecyclerView;

    .line 120
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->llSearchSuggestion:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->b:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->c:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->d:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity_ViewBinding;->e:Landroid/view/View;

    return-void
.end method
