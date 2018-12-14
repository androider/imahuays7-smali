.class final Lcom/flurry/sdk/e$3;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/e$a;

.field final synthetic b:Lcom/flurry/sdk/a;

.field final synthetic c:Lcom/flurry/sdk/e;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/e;Lcom/flurry/sdk/e$a;Lcom/flurry/sdk/a;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/flurry/sdk/e$3;->c:Lcom/flurry/sdk/e;

    iput-object p2, p0, Lcom/flurry/sdk/e$3;->a:Lcom/flurry/sdk/e$a;

    iput-object p3, p0, Lcom/flurry/sdk/e$3;->b:Lcom/flurry/sdk/a;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 362
    sget-object v0, Lcom/flurry/sdk/e$5;->a:[I

    iget-object v1, p0, Lcom/flurry/sdk/e$3;->a:Lcom/flurry/sdk/e$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/e$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/e$3;->b:Lcom/flurry/sdk/a;

    iget-object v1, p0, Lcom/flurry/sdk/e$3;->c:Lcom/flurry/sdk/e;

    invoke-static {v1}, Lcom/flurry/sdk/e;->h(Lcom/flurry/sdk/e;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/flurry/sdk/a;->onFetchError(Z)V

    goto :goto_0

    .line 367
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/e$3;->b:Lcom/flurry/sdk/a;

    invoke-interface {v0}, Lcom/flurry/sdk/a;->onFetchNoChange()V

    return-void

    .line 364
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/e$3;->b:Lcom/flurry/sdk/a;

    invoke-interface {v0}, Lcom/flurry/sdk/a;->onFetchSuccess()V

    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
