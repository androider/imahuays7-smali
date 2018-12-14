.class public final Lcom/flurry/sdk/cq;
.super Lcom/flurry/sdk/cv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/cq$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const-string v0, "com.flurry.android.sdk.ApplicationStateEvent"

    .line 15
    invoke-direct {p0, v0}, Lcom/flurry/sdk/cv;-><init>(Ljava/lang/String;)V

    .line 16
    iput p1, p0, Lcom/flurry/sdk/cq;->a:I

    return-void
.end method
