.class Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity$2;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 328
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->finish()V

    return-void
.end method
