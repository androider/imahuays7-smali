.class public final Lcom/flurry/android/FlurryConsent;
.super Lcom/flurry/android/Consent;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZLjava/util/Map;)V
    .locals 1
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/flurry/android/Consent;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1028
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Consent strings can not be null or empty when in scope of GDPR"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    iput-boolean p1, p0, Lcom/flurry/android/FlurryConsent;->isGdprScope:Z

    .line 24
    iput-object p2, p0, Lcom/flurry/android/FlurryConsent;->consentStrings:Ljava/util/Map;

    return-void
.end method
