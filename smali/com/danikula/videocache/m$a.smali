.class Lcom/danikula/videocache/m$a;
.super Ljava/lang/Object;
.source "ProxyCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/danikula/videocache/m;


# direct methods
.method private constructor <init>(Lcom/danikula/videocache/m;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/danikula/videocache/m$a;->a:Lcom/danikula/videocache/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/danikula/videocache/m;Lcom/danikula/videocache/m$1;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/danikula/videocache/m$a;-><init>(Lcom/danikula/videocache/m;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/danikula/videocache/m$a;->a:Lcom/danikula/videocache/m;

    invoke-static {v0}, Lcom/danikula/videocache/m;->a(Lcom/danikula/videocache/m;)V

    return-void
.end method
