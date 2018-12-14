.class public interface abstract Lorg/apache/httpcore/h;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
