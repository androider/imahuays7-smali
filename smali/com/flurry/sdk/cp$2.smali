.class final Lcom/flurry/sdk/cp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cp;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/flurry/sdk/cp$2;->a:Lcom/flurry/sdk/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 151
    invoke-static {p1}, Lcom/flurry/sdk/cp;->a(Z)V

    :cond_0
    return-void
.end method
