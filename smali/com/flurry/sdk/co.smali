.class public final Lcom/flurry/sdk/co;
.super Lcom/flurry/sdk/cv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/co$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "com.flurry.android.sdk.ActivityLifecycleEvent"

    .line 16
    invoke-direct {p0, v0}, Lcom/flurry/sdk/cv;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/co;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method
