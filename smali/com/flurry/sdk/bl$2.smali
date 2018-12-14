.class final Lcom/flurry/sdk/bl$2;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/bl;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/bl;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bl;I)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/flurry/sdk/bl$2;->b:Lcom/flurry/sdk/bl;

    iput p2, p0, Lcom/flurry/sdk/bl$2;->a:I

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 185
    iget v0, p0, Lcom/flurry/sdk/bl$2;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 186
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    .line 1160
    invoke-static {}, Lcom/flurry/sdk/y;->b()Lcom/flurry/sdk/bp;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2060
    iput-boolean v1, v0, Lcom/flurry/sdk/bp;->j:Z

    :cond_0
    return-void
.end method
