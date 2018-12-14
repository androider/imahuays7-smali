.class final Lcom/flurry/sdk/do$1;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/do;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/do;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/flurry/sdk/do$1;->a:Lcom/flurry/sdk/do;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/flurry/sdk/do$1;->a:Lcom/flurry/sdk/do;

    invoke-static {v0}, Lcom/flurry/sdk/do;->a(Lcom/flurry/sdk/do;)V

    return-void
.end method
