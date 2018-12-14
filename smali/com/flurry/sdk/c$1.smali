.class final Lcom/flurry/sdk/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/c;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/c;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/flurry/sdk/c$1;->a:Lcom/flurry/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/c$1;->a:Lcom/flurry/sdk/c;

    sget-object v1, Lcom/flurry/sdk/h;->b:Lcom/flurry/sdk/h;

    invoke-static {v0, v1}, Lcom/flurry/sdk/c;->a(Lcom/flurry/sdk/c;Lcom/flurry/sdk/h;)Lcom/flurry/sdk/h;

    .line 59
    iget-object v0, p0, Lcom/flurry/sdk/c$1;->a:Lcom/flurry/sdk/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/c;->a(Lcom/flurry/sdk/c;J)J

    .line 60
    iget-object v0, p0, Lcom/flurry/sdk/c$1;->a:Lcom/flurry/sdk/c;

    invoke-static {v0}, Lcom/flurry/sdk/c;->a(Lcom/flurry/sdk/c;)Lcom/flurry/sdk/l;

    .line 61
    iget-object v0, p0, Lcom/flurry/sdk/c$1;->a:Lcom/flurry/sdk/c;

    invoke-static {v0}, Lcom/flurry/sdk/c;->b(Lcom/flurry/sdk/c;)Lcom/flurry/sdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->b()V

    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/c$1;->a:Lcom/flurry/sdk/c;

    invoke-static {v0}, Lcom/flurry/sdk/c;->c(Lcom/flurry/sdk/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/c$1;->a:Lcom/flurry/sdk/c;

    invoke-static {v0}, Lcom/flurry/sdk/c;->e(Lcom/flurry/sdk/c;)Lcom/flurry/sdk/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/c$1;->a:Lcom/flurry/sdk/c;

    invoke-static {v1}, Lcom/flurry/sdk/c;->d(Lcom/flurry/sdk/c;)Lcom/flurry/sdk/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/flurry/sdk/c$a;->a(Lcom/flurry/sdk/h;Z)V

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/c$1;->a:Lcom/flurry/sdk/c;

    invoke-static {v0}, Lcom/flurry/sdk/c;->f(Lcom/flurry/sdk/c;)V

    return-void
.end method
