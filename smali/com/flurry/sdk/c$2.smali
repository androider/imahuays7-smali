.class final Lcom/flurry/sdk/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/cw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/cw<",
        "Lcom/flurry/sdk/cv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/c;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/c;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/flurry/sdk/c$2;->a:Lcom/flurry/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/cv;)V
    .locals 1

    .line 76
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object p1

    iget-object v0, p0, Lcom/flurry/sdk/c$2;->a:Lcom/flurry/sdk/c;

    invoke-static {v0}, Lcom/flurry/sdk/c;->g(Lcom/flurry/sdk/c;)Lcom/flurry/sdk/cw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/cx;->a(Lcom/flurry/sdk/cw;)V

    .line 77
    iget-object p1, p0, Lcom/flurry/sdk/c$2;->a:Lcom/flurry/sdk/c;

    invoke-static {p1}, Lcom/flurry/sdk/c;->h(Lcom/flurry/sdk/c;)V

    return-void
.end method
