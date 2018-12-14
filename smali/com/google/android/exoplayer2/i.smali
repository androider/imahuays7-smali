.class public final Lcom/google/android/exoplayer2/i;
.super Ljava/lang/Object;
.source "ExoPlayerFactory.java"


# direct methods
.method public static a(Lcom/google/android/exoplayer2/aa;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/drm/d;)Lcom/google/android/exoplayer2/ac;
    .locals 1
    .param p3    # Lcom/google/android/exoplayer2/drm/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/aa;",
            "Lcom/google/android/exoplayer2/trackselection/g;",
            "Lcom/google/android/exoplayer2/n;",
            "Lcom/google/android/exoplayer2/drm/d<",
            "Lcom/google/android/exoplayer2/drm/h;",
            ">;)",
            "Lcom/google/android/exoplayer2/ac;"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/google/android/exoplayer2/ac;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ac;-><init>(Lcom/google/android/exoplayer2/aa;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/drm/d;)V

    return-object v0
.end method
