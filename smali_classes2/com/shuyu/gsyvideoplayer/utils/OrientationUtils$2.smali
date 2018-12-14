.class Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;
.super Landroid/view/OrientationEventListener;
.source "OrientationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->initOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Landroid/content/Context;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$000(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$100(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$900(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x2d

    if-ltz p1, :cond_4

    if-le p1, v0, :cond_5

    :cond_4
    const/16 v3, 0x159

    if-lt p1, v3, :cond_6

    .line 297
    :cond_5
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$1000(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 298
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$1002(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z

    const-string p1, "TTT"

    const-string v0, "portrait Screen"

    .line 299
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$900(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;->portraitScreen()V

    goto :goto_1

    :cond_6
    const/16 v2, 0xff

    if-lt p1, v2, :cond_7

    const/16 v2, 0x11d

    if-gt p1, v2, :cond_7

    .line 305
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$1000(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 306
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$1002(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z

    const-string p1, "TTT"

    const-string v0, "landScreen 255 285"

    .line 307
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$900(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;->landScreen()V

    goto :goto_1

    :cond_7
    if-le p1, v0, :cond_8

    const/16 v0, 0x55

    if-ge p1, v0, :cond_8

    .line 314
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$1000(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 315
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$1002(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z

    const-string p1, "TTT"

    const-string v0, "landScreen 45 85"

    .line 316
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$900(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;->landScreen()V

    :cond_8
    :goto_1
    return-void
.end method
