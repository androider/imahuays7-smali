.class Lcom/yanzhenjie/permission/checker/CameraTest;
.super Ljava/lang/Object;
.source "CameraTest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/checker/PermissionTest;


# static fields
.field private static final CALLBACK:Landroid/view/SurfaceHolder$Callback;

.field private static final PREVIEW_CALLBACK:Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/yanzhenjie/permission/checker/CameraTest$1;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/CameraTest$1;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/checker/CameraTest;->PREVIEW_CALLBACK:Landroid/hardware/Camera$PreviewCallback;

    .line 69
    new-instance v0, Lcom/yanzhenjie/permission/checker/CameraTest$2;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/CameraTest$2;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/checker/CameraTest;->CALLBACK:Landroid/view/SurfaceHolder$Callback;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yanzhenjie/permission/checker/CameraTest;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public test()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/yanzhenjie/permission/checker/CameraTest;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/yanzhenjie/permission/checker/CameraTest;->CALLBACK:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 46
    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 47
    sget-object v0, Lcom/yanzhenjie/permission/checker/CameraTest;->PREVIEW_CALLBACK:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 48
    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 56
    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 57
    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 58
    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    :cond_0
    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_0

    :catch_0
    move-object v3, v2

    .line 51
    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/yanzhenjie/permission/checker/CameraTest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.camera"

    .line 52
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/2addr v0, v1

    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 56
    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 57
    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 58
    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    :cond_1
    return v0

    :goto_0
    if-eqz v3, :cond_2

    .line 55
    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 56
    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 57
    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 58
    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    :cond_2
    throw v0
.end method
