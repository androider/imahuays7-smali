.class final Lcom/flurry/sdk/bf$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bf;Ljava/io/OutputStream;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/flurry/sdk/bf$1;->a:Lcom/flurry/sdk/bf;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method
