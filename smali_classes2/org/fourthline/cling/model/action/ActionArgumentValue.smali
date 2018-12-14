.class public Lorg/fourthline/cling/model/action/ActionArgumentValue;
.super Lorg/fourthline/cling/model/VariableValue;
.source "ActionArgumentValue.java"


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
.field private final argument:Lorg/fourthline/cling/model/meta/ActionArgument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/ActionArgument;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
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
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/ActionArgument;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/fourthline/cling/model/VariableValue;-><init>(Lorg/fourthline/cling/model/types/Datatype;Ljava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lorg/fourthline/cling/model/action/ActionArgumentValue;->argument:Lorg/fourthline/cling/model/meta/ActionArgument;

    return-void
.end method


# virtual methods
.method public getArgument()Lorg/fourthline/cling/model/meta/ActionArgument;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "TS;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/fourthline/cling/model/action/ActionArgumentValue;->argument:Lorg/fourthline/cling/model/meta/ActionArgument;

    return-object v0
.end method
