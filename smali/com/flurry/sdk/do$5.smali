.class public final Lcom/flurry/sdk/do$5;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/do;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/do;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/flurry/sdk/do$5;->a:Lcom/flurry/sdk/do;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/flurry/sdk/do$5;->a:Lcom/flurry/sdk/do;

    invoke-static {v0}, Lcom/flurry/sdk/do;->a(Lcom/flurry/sdk/do;)V

    return-void
.end method
