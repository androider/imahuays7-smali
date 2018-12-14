.class public Lcom/mh/movie/core/mvp/model/db/ShareEvent;
.super Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;
.source "ShareEvent.java"


# static fields
.field public static final SHARE_CANCEL:Ljava/lang/String; = "3"

.field public static final SHARE_ERROR:Ljava/lang/String; = "1"

.field public static final SHARE_MOMENTS:I = 0x2

.field public static final SHARE_QQ:I = 0x4

.field public static final SHARE_QZONE:I = 0x5

.field public static final SHARE_WEB:I = 0x3

.field public static final SHARE_WECHAT:I = 0x1


# instance fields
.field position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->position:I

    return v0
.end method

.method public setPosition(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->position:I

    return-void
.end method
