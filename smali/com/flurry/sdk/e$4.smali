.class final Lcom/flurry/sdk/e$4;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/e;->a(Lcom/flurry/sdk/k;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/a;

.field final synthetic b:Z

.field final synthetic c:Lcom/flurry/sdk/e;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/e;Lcom/flurry/sdk/a;Z)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/flurry/sdk/e$4;->c:Lcom/flurry/sdk/e;

    iput-object p2, p0, Lcom/flurry/sdk/e$4;->a:Lcom/flurry/sdk/a;

    iput-boolean p3, p0, Lcom/flurry/sdk/e$4;->b:Z

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/flurry/sdk/e$4;->a:Lcom/flurry/sdk/a;

    iget-boolean v1, p0, Lcom/flurry/sdk/e$4;->b:Z

    invoke-interface {v0, v1}, Lcom/flurry/sdk/a;->onActivateComplete(Z)V

    return-void
.end method
