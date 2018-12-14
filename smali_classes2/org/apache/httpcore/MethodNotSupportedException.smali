.class public Lorg/apache/httpcore/MethodNotSupportedException;
.super Lorg/apache/httpcore/HttpException;
.source "MethodNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = 0x2eb42836ac8256c1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/httpcore/HttpException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/httpcore/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
