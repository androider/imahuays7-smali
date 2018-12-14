.class final Lcom/danikula/videocache/g$c;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/danikula/videocache/g;

.field private final b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/g;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/danikula/videocache/g$c;->a:Lcom/danikula/videocache/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/danikula/videocache/g$c;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/danikula/videocache/g$c;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 318
    iget-object v0, p0, Lcom/danikula/videocache/g$c;->a:Lcom/danikula/videocache/g;

    invoke-static {v0}, Lcom/danikula/videocache/g;->a(Lcom/danikula/videocache/g;)V

    return-void
.end method
