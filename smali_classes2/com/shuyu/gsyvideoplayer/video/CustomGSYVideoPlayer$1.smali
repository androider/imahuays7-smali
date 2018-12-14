.class Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer$1;
.super Ljava/lang/Object;
.source "CustomGSYVideoPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->addTextureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 79
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/a;->a()Lcom/shuyu/gsyvideoplayer/a;

    move-result-object p2

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/a;->a(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 89
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/a;->a()Lcom/shuyu/gsyvideoplayer/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/a;->a(Landroid/view/Surface;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
