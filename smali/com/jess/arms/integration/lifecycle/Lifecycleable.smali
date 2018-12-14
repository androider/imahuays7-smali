.class public interface abstract Lcom/jess/arms/integration/lifecycle/Lifecycleable;
.super Ljava/lang/Object;
.source "Lifecycleable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract provideLifecycleSubject()Lio/reactivex/subjects/Subject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/Subject<",
            "TE;>;"
        }
    .end annotation
.end method
