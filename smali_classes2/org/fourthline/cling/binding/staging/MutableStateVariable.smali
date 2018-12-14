.class public Lorg/fourthline/cling/binding/staging/MutableStateVariable;
.super Ljava/lang/Object;
.source "MutableStateVariable.java"


# instance fields
.field public allowedValueRange:Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;

.field public allowedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dataType:Lorg/fourthline/cling/model/types/Datatype;

.field public defaultValue:Ljava/lang/String;

.field public eventDetails:Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 15

    .line 39
    new-instance v0, Lorg/fourthline/cling/model/meta/StateVariable;

    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->name:Ljava/lang/String;

    new-instance v2, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    iget-object v3, p0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->dataType:Lorg/fourthline/cling/model/types/Datatype;

    iget-object v4, p0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->defaultValue:Ljava/lang/String;

    iget-object v5, p0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValues:Ljava/util/List;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValues:Ljava/util/List;

    .line 44
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValues:Ljava/util/List;

    iget-object v7, p0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValues:Ljava/util/List;

    .line 46
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v5, v6

    :goto_1
    iget-object v7, p0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValueRange:Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v6, Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    iget-object v7, p0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValueRange:Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;

    iget-object v7, v7, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;->minimum:Ljava/lang/Long;

    .line 50
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v7, p0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValueRange:Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;

    iget-object v7, v7, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;->maximum:Ljava/lang/Long;

    .line 51
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v7, p0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValueRange:Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;

    iget-object v7, v7, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;->step:Ljava/lang/Long;

    .line 52
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;-><init>(JJJ)V

    :goto_2
    invoke-direct {v2, v3, v4, v5, v6}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/fourthline/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;)V

    iget-object v3, p0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->eventDetails:Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;Lorg/fourthline/cling/model/meta/StateVariableEventDetails;)V

    return-object v0
.end method
