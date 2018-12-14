.class public Lnet/butterflytv/rtmp_client/RtmpClient$RtmpIOException;
.super Ljava/io/IOException;
.source "RtmpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/butterflytv/rtmp_client/RtmpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RtmpIOException"
.end annotation


# static fields
.field public static final OPEN_ALLOC:I = -0x1

.field public static final OPEN_CONNECT:I = -0x3

.field public static final OPEN_CONNECT_STREAM:I = -0x4

.field public static final OPEN_SETUP_URL:I = -0x2


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 46
    iput p1, p0, Lnet/butterflytv/rtmp_client/RtmpClient$RtmpIOException;->errorCode:I

    return-void
.end method
