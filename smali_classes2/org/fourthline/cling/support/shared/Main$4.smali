.class Lorg/fourthline/cling/support/shared/Main$4;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/Main;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/shared/Main;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/Main;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/Main$4;->this$0:Lorg/fourthline/cling/support/shared/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/Main$4;->this$0:Lorg/fourthline/cling/support/shared/Main;

    iget-object v0, v0, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->dispose()V

    return-void
.end method
