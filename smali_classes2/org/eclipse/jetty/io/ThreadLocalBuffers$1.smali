.class Lorg/eclipse/jetty/io/ThreadLocalBuffers$1;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocalBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/ThreadLocalBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/io/ThreadLocalBuffers;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/ThreadLocalBuffers;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$1;->this$0:Lorg/eclipse/jetty/io/ThreadLocalBuffers;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers$1;->initialValue()Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;
    .locals 1

    .line 36
    new-instance v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;-><init>()V

    return-object v0
.end method
