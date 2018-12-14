.class public Lorg/fourthline/cling/support/model/dlna/types/ScmsFlagType;
.super Ljava/lang/Object;
.source "ScmsFlagType.java"


# instance fields
.field private copyright:Z

.field private original:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lorg/fourthline/cling/support/model/dlna/types/ScmsFlagType;->copyright:Z

    .line 28
    iput-boolean v0, p0, Lorg/fourthline/cling/support/model/dlna/types/ScmsFlagType;->original:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lorg/fourthline/cling/support/model/dlna/types/ScmsFlagType;->copyright:Z

    .line 33
    iput-boolean p2, p0, Lorg/fourthline/cling/support/model/dlna/types/ScmsFlagType;->original:Z

    return-void
.end method


# virtual methods
.method public isCopyright()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lorg/fourthline/cling/support/model/dlna/types/ScmsFlagType;->copyright:Z

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lorg/fourthline/cling/support/model/dlna/types/ScmsFlagType;->original:Z

    return v0
.end method
