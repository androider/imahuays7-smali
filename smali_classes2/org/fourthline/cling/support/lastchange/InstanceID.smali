.class public Lorg/fourthline/cling/support/lastchange/InstanceID;
.super Ljava/lang/Object;
.source "InstanceID.java"


# instance fields
.field protected id:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field protected values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/lastchange/InstanceID;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/lastchange/InstanceID;->values:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lorg/fourthline/cling/support/lastchange/InstanceID;->id:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 37
    iput-object p2, p0, Lorg/fourthline/cling/support/lastchange/InstanceID;->values:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/InstanceID;->id:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/InstanceID;->values:Ljava/util/List;

    return-object v0
.end method
