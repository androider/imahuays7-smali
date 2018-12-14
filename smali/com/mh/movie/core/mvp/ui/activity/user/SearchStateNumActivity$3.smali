.class Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$3;
.super Ljava/lang/Object;
.source "SearchStateNumActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    .line 165
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    invoke-static {p3, p1}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 166
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method
