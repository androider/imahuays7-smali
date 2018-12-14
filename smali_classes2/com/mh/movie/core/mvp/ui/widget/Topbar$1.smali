.class Lcom/mh/movie/core/mvp/ui/widget/Topbar$1;
.super Ljava/lang/Object;
.source "Topbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/Topbar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/widget/Topbar;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/Topbar;Landroid/content/Context;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar$1;->b:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar$1;->a:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
