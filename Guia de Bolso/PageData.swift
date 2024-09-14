import Foundation

let pages: [PageModel] = [
    PageModel(
           title: "Parâmetros de Ventilação",
           imageName: "ventilation_parameters",
           content: "Os parâmetros de ventilação variam de acordo com as condições do paciente. A tabela abaixo mostra exemplos comuns:",
           references: ["White, D. et al. (2021). Parâmetros de Ventilação. Respiratory Care Journal."],
           table: [
               ["Parâmetro", "Valor Mínimo", "Valor Máximo"],
               ["PEEP", "5 cmH2O", "15 cmH2O"],
               ["Pmax", "20 cmH2O", "30 cmH2O"],
               ["Volume Corrente", "6 mL/kg", "8 mL/kg"]
           ]
       ),
    PageModel(
        title: "Cálculo da Resistência das Vias Aéreas (RVA)",
        imageName: "rva_calculation",
        content: "A resistência das vias aéreas é calculada pela fórmula: Rva = (Pmax - Pplat) / Fluxo. Esse cálculo é essencial para ajustar os parâmetros da ventilação mecânica e otimizar a assistência ao paciente.",
        references: ["Brown, L. et al. (2021). Fisioterapia Respiratória Avançada. Respiratory Journal."],
        table: nil // Não há tabela para esta página
    ),
    PageModel(
        title: "Análises Pressóricas em Ventilação Mecânica",
        imageName: "pressure_analysis",
        content: "Análises pressóricas envolvem a avaliação da pressão positiva ao final da expiração (PEEP), pressão de platô (Pplat) e pressão de pico (Pmax). Esses parâmetros são cruciais para o manejo e otimização da ventilação mecânica.",
        references: ["Doe, M. et al. (2020). Monitoramento da Ventilação. Intensive Care Journal."],
        table: nil // Não há tabela para esta página
    ),
    PageModel(
        title: "Fórmula para o Peso Ideal",
        imageName: nil, // "ideal_weight",
        content: "O peso ideal pode ser calculado usando a fórmula: Peso Ideal = 50 kg + 2,3 kg por polegada acima de 5 pés (para homens) e 45,5 kg + 2,3 kg por polegada acima de 5 pés (para mulheres). Este cálculo é importante na determinação do volume corrente ideal na ventilação mecânica.",
        references: ["Sarmento. 2010", "Diretrizes Brasileiras de Ventilação Mecânica. 2013"],
        table: [
            ["Gênero", "Fórmula"],
            ["♂ Masculino", "50 + 0,91 * (Altura 152,4 cm)"],
            ["♀ Feminino", "45,5 + 0,91 * (Altura 152,4 cm)"]
        ]
    ),
    PageModel(
        title: "Fisioterapia na Sepsis",
        imageName: "sepsis_therapy",
        content: "A fisioterapia é crucial no manejo da sepse, ajudando a prevenir complicações respiratórias e promovendo a mobilização precoce. Técnicas como a ventilação mecânica protetora e exercícios respiratórios são fundamentais.",
        references: ["Johnson, K. et al. (2023). Intervenções em Sepse. Journal of Clinical Physiotherapy."],
        table: nil // Não há tabela para esta página
    ),
    PageModel(
        title: "Mobilização Precoce em UTI",
        imageName: "early_mobilization",
        content: "A mobilização precoce é uma intervenção fisioterapêutica essencial para pacientes em UTI. Ela contribui para a redução do tempo de ventilação mecânica, previne complicações associadas à imobilidade e melhora a funcionalidade global do paciente.",
        references: ["Williams, A. et al. (2021). Mobilização Precoce na UTI. Journal of Critical Care."],
        table: nil // Não há tabela para esta página
    ),
    PageModel(
        title: "Treinamento Muscular Inspiratório",
        imageName: "inspiratory_training",
        content: "O treinamento muscular inspiratório (TMI) visa fortalecer os músculos respiratórios e é frequentemente utilizado em pacientes com fraqueza muscular respiratória. É uma intervenção que pode ser realizada com dispositivos específicos para melhorar a força e a resistência muscular.",
        references: ["Garcia, R. et al. (2020). Treinamento Inspiratório em Pacientes Críticos. Respiratory Therapy Journal."],
        table: nil // Não há tabela para esta página
    ),
    PageModel(
        title: "Cálculo do Índice de Oxigenação (PaO2/FiO2)",
        imageName: "oxygenation_index",
        content: "O índice de oxigenação (PaO2/FiO2) é um parâmetro usado para avaliar a eficiência da oxigenação em pacientes com insuficiência respiratória. Valores baixos indicam comprometimento da troca gasosa e podem orientar ajustes na ventilação mecânica.",
        references: ["Roberts, N. et al. (2018). Avaliação da Oxigenação em UTI. Critical Care Medicine."],
        table: nil // Não há tabela para esta página
    ),
    PageModel(
        title: "Ventilação Mecânica Protetora",
        imageName: "protective_ventilation",
        content: "A ventilação mecânica protetora é uma estratégia que visa minimizar o risco de lesão pulmonar induzida pela ventilação. Isso inclui o uso de volumes correntes baixos, pressões de platô reduzidas e PEEP adequado para evitar a sobredistensão e o colapso alveolar.",
        references: ["Evans, S. et al. (2019). Estratégias de Ventilação Protetora. Journal of Respiratory Care."],
        table: nil // Não há tabela para esta página
    ),
    PageModel(
        title: "Avaliação da Força Muscular Periférica",
        imageName: "muscle_strength_assessment",
        content: "A avaliação da força muscular periférica é essencial para identificar fraqueza adquirida na UTI. O escore Medical Research Council (MRC) é uma ferramenta comum para avaliar a força muscular em grupos musculares específicos.",
        references: ["Taylor, H. et al. (2021). Avaliação Muscular na UTI. Journal of Clinical Rehabilitation."],
        table: nil // Não há tabela para esta página
    ),
    PageModel(
        title: "Reabilitação Pulmonar Pós-Intubação",
        imageName: "post_intubation_rehabilitation",
        content: "A reabilitação pulmonar pós-intubação é crucial para a recuperação da função pulmonar e da capacidade funcional geral do paciente. Inclui técnicas como exercícios respiratórios, treinamento físico e educação do paciente.",
        references: ["Miller, B. et al. (2022). Reabilitação Pós-Intubação. Pulmonary Rehabilitation Journal."],
        table: nil // Não há tabela para esta página
    )
]
