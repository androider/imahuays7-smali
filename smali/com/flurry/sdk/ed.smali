.class public final Lcom/flurry/sdk/ed;
.super Lcom/flurry/sdk/cv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ed$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/flurry/sdk/ec;

.field public d:I

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.flurry.android.sdk.FlurrySessionEvent"

    .line 18
    invoke-direct {p0, v0}, Lcom/flurry/sdk/cv;-><init>(Ljava/lang/String;)V

    return-void
.end method
