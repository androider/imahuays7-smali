.class Lorg/dom4j/rule/RuleManager$1;
.super Ljava/lang/Object;
.source "RuleManager.java"

# interfaces
.implements Lorg/dom4j/rule/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/dom4j/rule/RuleManager;->addDefaultRules(Lorg/dom4j/rule/Mode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/dom4j/rule/RuleManager;

.field final synthetic val$mode:Lorg/dom4j/rule/Mode;


# direct methods
.method constructor <init>(Lorg/dom4j/rule/RuleManager;Lorg/dom4j/rule/Mode;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/dom4j/rule/RuleManager$1;->this$0:Lorg/dom4j/rule/RuleManager;

    iput-object p2, p0, Lorg/dom4j/rule/RuleManager$1;->val$mode:Lorg/dom4j/rule/Mode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/dom4j/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/dom4j/rule/RuleManager$1;->val$mode:Lorg/dom4j/rule/Mode;

    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/Mode;->applyTemplates(Lorg/dom4j/Element;)V

    goto :goto_0

    .line 170
    :cond_0
    instance-of v0, p1, Lorg/dom4j/Document;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lorg/dom4j/rule/RuleManager$1;->val$mode:Lorg/dom4j/rule/Mode;

    check-cast p1, Lorg/dom4j/Document;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/Mode;->applyTemplates(Lorg/dom4j/Document;)V

    :cond_1
    :goto_0
    return-void
.end method
