.class public Lorg/eclipse/jetty/io/EofException;
.super Ljava/io/EOFException;
.source "EofException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/EofException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-void
.end method
