.class public Lorg/dom4j/rule/Stylesheet;
.super Ljava/lang/Object;
.source "Stylesheet.java"


# instance fields
.field private modeName:Ljava/lang/String;

.field private ruleManager:Lorg/dom4j/rule/RuleManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/dom4j/rule/RuleManager;

    invoke-direct {v0}, Lorg/dom4j/rule/RuleManager;-><init>()V

    iput-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    return-void
.end method


# virtual methods
.method public addRule(Lorg/dom4j/rule/Rule;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleManager;->addRule(Lorg/dom4j/rule/Rule;)V

    return-void
.end method

.method public applyTemplates(Ljava/lang/Object;Lorg/dom4j/XPath;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;Lorg/dom4j/XPath;Ljava/lang/String;)V

    return-void
.end method

.method public applyTemplates(Ljava/lang/Object;Lorg/dom4j/XPath;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p3}, Lorg/dom4j/rule/RuleManager;->getMode(Ljava/lang/String;)Lorg/dom4j/rule/Mode;

    move-result-object p3

    .line 107
    invoke-interface {p2, p1}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/dom4j/Node;

    .line 109
    invoke-virtual {p3, p2}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public applyTemplates(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public applyTemplates(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/dom4j/Node;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 247
    instance-of v1, v0, Lorg/dom4j/Element;

    if-eqz v1, :cond_1

    .line 248
    check-cast v0, Lorg/dom4j/Element;

    invoke-virtual {p0, v0, p2}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Lorg/dom4j/Element;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_1
    instance-of v1, v0, Lorg/dom4j/Document;

    if-eqz v1, :cond_0

    .line 250
    check-cast v0, Lorg/dom4j/Document;

    invoke-virtual {p0, v0, p2}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Lorg/dom4j/Document;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public applyTemplates(Lorg/dom4j/Document;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Lorg/dom4j/Document;Ljava/lang/String;)V

    return-void
.end method

.method public applyTemplates(Lorg/dom4j/Document;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p2}, Lorg/dom4j/rule/RuleManager;->getMode(Ljava/lang/String;)Lorg/dom4j/rule/Mode;

    move-result-object p2

    .line 227
    invoke-interface {p1}, Lorg/dom4j/Document;->nodeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 228
    invoke-interface {p1, v1}, Lorg/dom4j/Document;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    .line 229
    invoke-virtual {p2, v2}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public applyTemplates(Lorg/dom4j/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Lorg/dom4j/Element;Ljava/lang/String;)V

    return-void
.end method

.method public applyTemplates(Lorg/dom4j/Element;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p2}, Lorg/dom4j/rule/RuleManager;->getMode(Ljava/lang/String;)Lorg/dom4j/rule/Mode;

    move-result-object p2

    .line 205
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 206
    invoke-interface {p1, v1}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    .line 207
    invoke-virtual {p2, v2}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public applyTemplates(Lorg/dom4j/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Lorg/dom4j/Node;Ljava/lang/String;)V

    return-void
.end method

.method public applyTemplates(Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 183
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Lorg/dom4j/Element;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_0
    instance-of v0, p1, Lorg/dom4j/Document;

    if-eqz v0, :cond_1

    .line 185
    check-cast p1, Lorg/dom4j/Document;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Lorg/dom4j/Document;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0}, Lorg/dom4j/rule/RuleManager;->clear()V

    return-void
.end method

.method public getModeName()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    return-object v0
.end method

.method public getValueOfAction()Lorg/dom4j/rule/Action;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0}, Lorg/dom4j/rule/RuleManager;->getValueOfAction()Lorg/dom4j/rule/Action;

    move-result-object v0

    return-object v0
.end method

.method public removeRule(Lorg/dom4j/rule/Rule;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleManager;->removeRule(Lorg/dom4j/rule/Rule;)V

    return-void
.end method

.method public run(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->run(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public run(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 62
    invoke-virtual {p0, v0, p2}, Lorg/dom4j/rule/Stylesheet;->run(Lorg/dom4j/Node;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public run(Lorg/dom4j/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->run(Lorg/dom4j/Node;Ljava/lang/String;)V

    return-void
.end method

.method public run(Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p2}, Lorg/dom4j/rule/RuleManager;->getMode(Ljava/lang/String;)Lorg/dom4j/rule/Mode;

    move-result-object p2

    .line 72
    invoke-virtual {p2, p1}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    return-void
.end method

.method public setValueOfAction(Lorg/dom4j/rule/Action;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleManager;->setValueOfAction(Lorg/dom4j/rule/Action;)V

    return-void
.end method
