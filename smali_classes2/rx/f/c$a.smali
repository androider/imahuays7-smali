.class final Lrx/f/c$a;
.super Ljava/lang/Object;
.source "Subscriptions.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/f/c$1;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lrx/f/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public unsubscribe()V
    .locals 0

    return-void
.end method
