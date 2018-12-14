.class Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$5;
.super Ljava/lang/Object;
.source "PartnerActivity.java"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 0

    const/16 p1, 0x64

    if-ge p3, p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;)Landroid/view/View;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method
