.class public Lorg/fourthline/cling/support/shared/CenterWindow;
.super Ljava/lang/Object;
.source "CenterWindow.java"


# instance fields
.field protected window:Ljava/awt/Window;


# direct methods
.method public constructor <init>(Ljava/awt/Window;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/CenterWindow;->window:Ljava/awt/Window;

    return-void
.end method


# virtual methods
.method public getWindow()Ljava/awt/Window;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/CenterWindow;->window:Ljava/awt/Window;

    return-object v0
.end method
