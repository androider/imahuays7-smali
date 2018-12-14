.class Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$2;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "MyTitleRecyclerDown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;Landroid/content/Context;IZ)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$2;->a:Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
