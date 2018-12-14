.class Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;
.super Ljava/lang/Object;
.source "IjkExoMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DemoPlayerListener"
.end annotation


# instance fields
.field private mDidPrepare:Z

.field private mIsBuffering:Z

.field private mIsPrepareing:Z

.field final synthetic this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;


# direct methods
.method private constructor <init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V
    .locals 0

    .line 335
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 336
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsPrepareing:Z

    .line 337
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mDidPrepare:Z

    .line 338
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsBuffering:Z

    return-void
.end method

.method synthetic constructor <init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$1;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;-><init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 385
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$700(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z

    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 3

    .line 342
    iget-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsBuffering:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/16 v1, 0x2be

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getBufferedPercentage()I

    move-result v2

    invoke-static {p1, v1, v2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$200(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z

    .line 347
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsBuffering:Z

    .line 352
    :cond_0
    :goto_0
    iget-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsPrepareing:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_1

    .line 355
    :cond_1
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$300(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V

    .line 356
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsPrepareing:Z

    .line 357
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mDidPrepare:Z

    :cond_2
    :goto_1
    const/4 p1, 0x1

    packed-switch p2, :pswitch_data_1

    goto :goto_2

    .line 376
    :pswitch_1
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$600(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V

    goto :goto_2

    .line 370
    :pswitch_2
    iget-object p2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/16 v0, 0x2bd

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getBufferedPercentage()I

    move-result v1

    invoke-static {p2, v0, v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$500(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z

    .line 371
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsBuffering:Z

    goto :goto_2

    .line 367
    :pswitch_3
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsPrepareing:Z

    goto :goto_2

    .line 364
    :pswitch_4
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$400(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V

    :goto_2
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1

    .line 391
    iget-object p4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {p4, p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$802(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;I)I

    .line 392
    iget-object p4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {p4, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$902(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;I)I

    .line 393
    iget-object p4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/4 v0, 0x1

    invoke-static {p4, p1, p2, v0, v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$1000(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;IIII)V

    if-lez p3, :cond_0

    .line 395
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/16 p2, 0x2711

    invoke-static {p1, p2, p3}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$1100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z

    :cond_0
    return-void
.end method
