.class public Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;
.super Ljava/lang/Object;
.source "ThreadLocalBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/ThreadLocalBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ThreadBuffers"
.end annotation


# instance fields
.field _buffer:Lorg/eclipse/jetty/io/Buffer;

.field _header:Lorg/eclipse/jetty/io/Buffer;

.field _other:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
