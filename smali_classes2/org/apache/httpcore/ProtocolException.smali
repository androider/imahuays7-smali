.class public Lorg/apache/httpcore/ProtocolException;
.super Lorg/apache/httpcore/HttpException;
.source "ProtocolException.java"


# static fields
.field private static final serialVersionUID:J = -0x1dbf7e88f4e951c2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/httpcore/HttpException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/httpcore/HttpException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lorg/apache/httpcore/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
