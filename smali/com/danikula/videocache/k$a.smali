.class Lcom/danikula/videocache/k$a;
.super Ljava/lang/Object;
.source "Pinger.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/danikula/videocache/k;


# direct methods
.method private constructor <init>(Lcom/danikula/videocache/k;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/danikula/videocache/k$a;->a:Lcom/danikula/videocache/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/danikula/videocache/k;Lcom/danikula/videocache/k$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/danikula/videocache/k$a;-><init>(Lcom/danikula/videocache/k;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/danikula/videocache/k$a;->a:Lcom/danikula/videocache/k;

    invoke-static {v0}, Lcom/danikula/videocache/k;->a(Lcom/danikula/videocache/k;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/danikula/videocache/k$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
