.class final Lcom/flurry/sdk/at$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/at;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ea<",
        "Lcom/flurry/sdk/ar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/at;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/at;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/flurry/sdk/at$7;->a:Lcom/flurry/sdk/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/dx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/dx<",
            "Lcom/flurry/sdk/ar;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance p1, Lcom/flurry/sdk/ar$a;

    invoke-direct {p1}, Lcom/flurry/sdk/ar$a;-><init>()V

    return-object p1
.end method
