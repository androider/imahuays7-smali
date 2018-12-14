.class public abstract Lcom/flurry/sdk/cv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.flurry.android.sdk.ReplaceMeWithAProperEventName"

    .line 7
    iput-object v0, p0, Lcom/flurry/sdk/cv;->c:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Event must have a name!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/cv;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/flurry/sdk/cv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/cx;->a(Lcom/flurry/sdk/cv;)V

    return-void
.end method
