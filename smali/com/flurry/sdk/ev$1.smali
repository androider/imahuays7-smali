.class final Lcom/flurry/sdk/ev$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ev;->a(Z)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/flurry/sdk/ev$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/flurry/sdk/ev$1;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/flurry/sdk/ev;->c(Ljava/util/Map;)V

    .line 68
    iget-object v0, p0, Lcom/flurry/sdk/ev$1;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/flurry/sdk/ev;->a(Ljava/util/Map;)V

    .line 69
    iget-object v0, p0, Lcom/flurry/sdk/ev$1;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/flurry/sdk/ev;->b(Ljava/util/Map;)V

    return-void
.end method
