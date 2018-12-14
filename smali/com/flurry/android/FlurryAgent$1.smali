.class final Lcom/flurry/android/FlurryAgent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/cw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/FlurryAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/cw<",
        "Lcom/flurry/sdk/ed;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/cv;)V
    .locals 2

    .line 62
    check-cast p1, Lcom/flurry/sdk/ed;

    .line 1065
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/FlurryAgent$1$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/FlurryAgent$1$1;-><init>(Lcom/flurry/android/FlurryAgent$1;Lcom/flurry/sdk/ed;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->a(Ljava/lang/Runnable;)V

    return-void
.end method
