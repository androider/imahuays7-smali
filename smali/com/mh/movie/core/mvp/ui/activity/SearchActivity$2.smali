.class Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 248
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->afterTextChanged(Landroid/text/Editable;)V

    .line 249
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 250
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 251
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->f:Ljava/lang/String;

    .line 253
    :cond_0
    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->checkStr(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    .line 254
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->r:Landroid/content/Context;

    const-string p2, "\u8bf7\u8f93\u5165\u4e2d\u6587\u82f1\u6587\u6216\u8005\u6570\u5b57\uff01"

    invoke-static {p1, p2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return p3

    .line 257
    :cond_1
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->rvSuggestion:Landroid/support/v7/widget/RecyclerView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 258
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 259
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    invoke-virtual {p2, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->a(Ljava/lang/String;Z)V

    .line 261
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/i;->b(Landroid/view/View;)V

    const/4 p3, 0x1

    :cond_3
    return p3
.end method
