.class public Lorg/fourthline/cling/controlpoint/event/ExecuteAction;
.super Ljava/lang/Object;
.source "ExecuteAction.java"


# instance fields
.field protected callback:Lorg/fourthline/cling/controlpoint/ActionCallback;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/controlpoint/ActionCallback;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/event/ExecuteAction;->callback:Lorg/fourthline/cling/controlpoint/ActionCallback;

    return-void
.end method


# virtual methods
.method public getCallback()Lorg/fourthline/cling/controlpoint/ActionCallback;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/event/ExecuteAction;->callback:Lorg/fourthline/cling/controlpoint/ActionCallback;

    return-object v0
.end method
