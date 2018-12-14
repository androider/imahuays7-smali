.class Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$1;
.super Ljava/lang/Object;
.source "SearchStateNumActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 118
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 132
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->sidrbar:Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    invoke-virtual {p1, v2}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->ivCancel:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->sidrbar:Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->ivCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
