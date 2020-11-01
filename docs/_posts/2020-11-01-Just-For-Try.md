---
layout: post
title:  "Maxwell Equations(Just For Try)"
date:   2020-11-01 12:14:01 +0800
categories: trash
mathjax: true

---
{% include mathjax.html %}
> #### Maxwell Equations(Differential) ####

##### Gauss's Law:

$$
\nabla\cdot\mathbf{\vec{E}} =\frac{\rho}{\varepsilon_0} \\
\nabla\cdot \mathbf{\vec{B}}=0
$$

##### Circuital Law:

$$
  \nabla\times\mathbf{\vec{E}}=-\frac{\partial\mathbf{\vec{B}}}{\partial t}\\
  \nabla\times\mathbf{\vec{B}}=\mu_0\left (\mathbf{\vec{J}}+\varepsilon_0 \frac{\partial\mathbf{\vec{E}}}{\partial t}\right )
 $$

 > #### Maxwell Equations(Integral)

 ##### Gauss's Law:

 $$
  \iint_{\partial\Omega}\mathbf{\vec{E}}\cdot d\mathbf{\vec{S}}=\frac{1}{\varepsilon_0}\iiint_\Omega \rho dV \\
  \iint_{\partial\Omega}\mathbf{\vec{B}}\cdot d\mathbf{\vec{S}}=0 \\
$$

##### Circuital Law:

$$
  \oint_{\partial\Sigma}\mathbf{\vec{E}}\cdot d{\vec{l}}=-\frac{d}{dt}\iint_\Sigma \mathbf{\vec{B}}\cdot d\mathbf{\vec{S}} \\
  \oint_{\partial\Sigma}\mathbf{\vec{B}}\cdot d\mathbf{\vec{l}}=\mu_0\left (\iint_\Sigma\mathbf{\vec{J}}\cdot d\mathbf{\vec{S}}+\varepsilon_0\frac{d}{dt}\iint_\Sigma\mathbf{\vec{E}}\cdot d\mathbf{\vec{S}} \right )
 $$