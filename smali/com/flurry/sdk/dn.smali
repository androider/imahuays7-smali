.class public abstract Lcom/flurry/sdk/dn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public n:J

.field o:Z

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field protected s:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 64
    iget v0, p0, Lcom/flurry/sdk/dn;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/dn;->p:I

    return-void
.end method
