.class public final Lcom/flurry/sdk/eb;
.super Lcom/flurry/sdk/ec;
.source "SourceFile"


# instance fields
.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/flurry/sdk/ec;-><init>()V

    const v0, 0xea60

    .line 5
    iput v0, p0, Lcom/flurry/sdk/eb;->c:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()J
    .locals 2

    const-wide/32 v0, 0xea60

    return-wide v0
.end method
