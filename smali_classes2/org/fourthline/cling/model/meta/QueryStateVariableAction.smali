.class public Lorg/fourthline/cling/model/meta/QueryStateVariableAction;
.super Lorg/fourthline/cling/model/meta/Action;
.source "QueryStateVariableAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/fourthline/cling/model/meta/Service;",
        ">",
        "Lorg/fourthline/cling/model/meta/Action<",
        "TS;>;"
    }
.end annotation


# static fields
.field public static final ACTION_NAME:Ljava/lang/String; = "QueryStateVariable"

.field public static final INPUT_ARG_VAR_NAME:Ljava/lang/String; = "varName"

.field public static final OUTPUT_ARG_RETURN:Ljava/lang/String; = "return"

.field public static final VIRTUAL_STATEVARIABLE_INPUT:Ljava/lang/String; = "VirtualQueryActionInput"

.field public static final VIRTUAL_STATEVARIABLE_OUTPUT:Ljava/lang/String; = "VirtualQueryActionOutput"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lorg/fourthline/cling/model/meta/QueryStateVariableAction;-><init>(Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const-string v0, "QueryStateVariable"

    const/4 v1, 0x2

    .line 45
    new-array v1, v1, [Lorg/fourthline/cling/model/meta/ActionArgument;

    new-instance v2, Lorg/fourthline/cling/model/meta/ActionArgument;

    const-string v3, "varName"

    const-string v4, "VirtualQueryActionInput"

    sget-object v5, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->IN:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    invoke-direct {v2, v3, v4, v5}, Lorg/fourthline/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/fourthline/cling/model/meta/ActionArgument;

    const-string v3, "return"

    const-string v4, "VirtualQueryActionOutput"

    sget-object v5, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->OUT:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    invoke-direct {v2, v3, v4, v5}, Lorg/fourthline/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lorg/fourthline/cling/model/meta/Action;-><init>(Ljava/lang/String;[Lorg/fourthline/cling/model/meta/ActionArgument;)V

    .line 51
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/QueryStateVariableAction;->setService(Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "QueryStateVariable"

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method
