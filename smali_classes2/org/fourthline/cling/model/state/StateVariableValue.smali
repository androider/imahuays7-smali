.class public Lorg/fourthline/cling/model/state/StateVariableValue;
.super Lorg/fourthline/cling/model/VariableValue;
.source "StateVariableValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/fourthline/cling/model/meta/Service;",
        ">",
        "Lorg/fourthline/cling/model/VariableValue;"
    }
.end annotation


# instance fields
.field private stateVariable:Lorg/fourthline/cling/model/meta/StateVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fourthline/cling/model/meta/StateVariable<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/StateVariable<",
            "TS;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/fourthline/cling/model/VariableValue;-><init>(Lorg/fourthline/cling/model/types/Datatype;Ljava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lorg/fourthline/cling/model/state/StateVariableValue;->stateVariable:Lorg/fourthline/cling/model/meta/StateVariable;

    return-void
.end method


# virtual methods
.method public getStateVariable()Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/meta/StateVariable<",
            "TS;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/fourthline/cling/model/state/StateVariableValue;->stateVariable:Lorg/fourthline/cling/model/meta/StateVariable;

    return-object v0
.end method
